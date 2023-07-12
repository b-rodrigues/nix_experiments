FROM nixos/nix

COPY default.nix /home/renv/default.nix

#RUN cd /home/renv/ && nix-build

RUN nix-shell /home/renv/default.nix --run "Rscript -e 'sessionInfo()'" >> /home/renv/sessionInfo.txt

CMD ["bash"]

